# Generated by Django 5.1.6 on 2025-02-20 19:44

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Funcionario',
            fields=[
                ('codfunc', models.IntegerField(db_column='CodFunc', primary_key=True, serialize=False)),
                ('nome', models.CharField(blank=True, db_column='Nome', max_length=60, null=True)),
                ('vinculo', models.CharField(blank=True, db_column='Vinculo', max_length=20, null=True)),
            ],
            options={
                'db_table': 'Funcionario',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Consultorio',
            fields=[
                ('codconsult', models.IntegerField(db_column='CodConsult', primary_key=True, serialize=False)),
                ('sala', models.CharField(blank=True, db_column='Sala', max_length=10, null=True)),
                ('descricao', models.TextField(blank=True, db_column='Descricao', null=True)),
            ],
            options={
                'db_table': 'Consultorio',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Remediounidade',
            fields=[
                ('codunid', models.IntegerField(db_column='CodUnid', primary_key=True, serialize=False)),
                ('lote', models.CharField(blank=True, db_column='Lote', max_length=20, null=True)),
                ('datavenc', models.DateField(db_column='DataVenc')),
                ('laboratorio', models.CharField(blank=True, db_column='Laboratorio', max_length=50, null=True)),
            ],
            options={
                'db_table': 'RemedioUnidade',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Historico',
            fields=[
                ('codhist', models.IntegerField(db_column='CodHist', primary_key=True, serialize=False)),
                ('descricao', models.TextField(blank=True, db_column='Descricao', null=True)),
                ('status', models.CharField(db_column='STATUS', max_length=20)),
                ('data_ini', models.DateField(db_column='Data_ini')),
                ('data_fim', models.DateField(blank=True, db_column='Data_fim', null=True)),
            ],
            options={
                'db_table': 'Historico',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Paciente',
            fields=[
                ('codpac', models.IntegerField(db_column='CodPac', primary_key=True, serialize=False)),
                ('nomepac', models.CharField(blank=True, db_column='NomePac', max_length=50, null=True)),
                ('cpf', models.CharField(db_column='CPF', max_length=14, unique=True)),
                ('datanasc', models.DateField(blank=True, db_column='DataNasc', null=True)),
                ('endereco', models.TextField(blank=True, db_column='Endereco', null=True)),
                ('telefone', models.CharField(blank=True, db_column='Telefone', max_length=15, null=True)),
            ],
            options={
                'db_table': 'Paciente',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Remedios',
            fields=[
                ('codrem', models.IntegerField(db_column='CodRem', primary_key=True, serialize=False)),
                ('nomerem', models.CharField(blank=True, db_column='NomeRem', max_length=50, null=True)),
                ('tipo', models.CharField(blank=True, db_column='Tipo', max_length=20, null=True)),
                ('descricao', models.TextField(blank=True, db_column='Descricao', null=True)),
                ('controlado', models.IntegerField(db_column='Controlado')),
            ],
            options={
                'db_table': 'Remedios',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Setor',
            fields=[
                ('codset', models.IntegerField(db_column='CodSet', primary_key=True, serialize=False)),
                ('nomeset', models.CharField(blank=True, db_column='NomeSet', max_length=20, null=True)),
                ('local', models.CharField(blank=True, db_column='Local', max_length=20, null=True)),
            ],
            options={
                'db_table': 'Setor',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Administrativo',
            fields=[
                ('codfunc', models.OneToOneField(db_column='CodFunc', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='hospital.funcionario')),
                ('cargo', models.CharField(blank=True, db_column='Cargo', max_length=20, null=True)),
            ],
            options={
                'db_table': 'Administrativo',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Consulta',
            fields=[
                ('codfunc', models.OneToOneField(db_column='CodFunc', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='hospital.funcionario')),
                ('dia', models.DateField(blank=True, db_column='Dia', null=True)),
                ('hora', models.TimeField(blank=True, db_column='Hora', null=True)),
            ],
            options={
                'db_table': 'Consulta',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Enfermeiro',
            fields=[
                ('codfunc', models.OneToOneField(db_column='CodFunc', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='hospital.funcionario')),
                ('coren', models.CharField(db_column='COREN', max_length=20)),
            ],
            options={
                'db_table': 'Enfermeiro',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Medico',
            fields=[
                ('codfunc', models.OneToOneField(db_column='CodFunc', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='hospital.funcionario')),
                ('crm', models.CharField(db_column='CRM', max_length=20)),
                ('especializacao', models.CharField(blank=True, db_column='Especializacao', max_length=50, null=True)),
            ],
            options={
                'db_table': 'Medico',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Consultcli',
            fields=[
                ('codconsult', models.OneToOneField(db_column='CodConsult', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='hospital.consultorio')),
            ],
            options={
                'db_table': 'ConsultCli',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Estoque',
            fields=[
                ('codunid', models.OneToOneField(db_column='CodUnid', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='hospital.remediounidade')),
                ('datacompra', models.DateField(blank=True, db_column='DataCompra', null=True)),
                ('quantidade', models.IntegerField(blank=True, db_column='Quantidade', null=True)),
            ],
            options={
                'db_table': 'Estoque',
                'managed': False,
            },
        ),
    ]
