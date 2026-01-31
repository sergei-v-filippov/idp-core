import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PrometheusModule } from '@willsoto/nestjs-prometheus';
import { ItemsModule } from './items/items.module';
import { Item } from './items/entities/item.entity';
import { HealthController } from './health/health.controller';

@Module({
  imports: [
    // 1. Metrics (creates /metrics)
    PrometheusModule.register(),

    // 2. Database
    TypeOrmModule.forRoot({
      type: 'postgres',
      url: process.env.DATABASE_URL || 'postgres://user:pass@postgres:5432/idp_db', 
      entities: [Item],
      synchronize: true, // Dev only!
    }),

    ItemsModule,
  ],
  controllers: [

  ],
  providers: [],
})
export class AppModule {}
