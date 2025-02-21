# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Administrativo(models.Model):
    codfunc = models.OneToOneField('Funcionario', models.DO_NOTHING, db_column='CodFunc', primary_key=True)  # Field name made lowercase. The composite primary key (CodFunc, CodSet) found, that is not supported. The first column is selected.
    codset = models.ForeignKey('Setor', models.DO_NOTHING, db_column='CodSet')  # Field name made lowercase.
    cargo = models.CharField(db_column='Cargo', max_length=20, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Administrativo'
        unique_together = (('codfunc', 'codset'),)


class Consultcli(models.Model):
    codconsult = models.OneToOneField('Consultorio', models.DO_NOTHING, db_column='CodConsult', primary_key=True)  # Field name made lowercase. The composite primary key (CodConsult, CodFunc) found, that is not supported. The first column is selected.
    codfunc = models.ForeignKey('Funcionario', models.DO_NOTHING, db_column='CodFunc')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ConsultCli'
        unique_together = (('codconsult', 'codfunc'),)


class Consulta(models.Model):
    codfunc = models.OneToOneField('Funcionario', models.DO_NOTHING, db_column='CodFunc', primary_key=True)  # Field name made lowercase. The composite primary key (CodFunc, CodUnid) found, that is not supported. The first column is selected.
    codunid = models.ForeignKey('Remediounidade', models.DO_NOTHING, db_column='CodUnid')  # Field name made lowercase.
    dia = models.DateField(db_column='Dia', blank=True, null=True)  # Field name made lowercase.
    hora = models.TimeField(db_column='Hora', blank=True, null=True)  # Field name made lowercase.
    codconsult = models.ForeignKey('Consultorio', models.DO_NOTHING, db_column='CodConsult', blank=True, null=True)  # Field name made lowercase.
    codpac = models.ForeignKey('Paciente', models.DO_NOTHING, db_column='CodPac', blank=True, null=True)  # Field name made lowercase.

    
    class Meta:
        managed = False
        db_table = 'Consulta'
        unique_together = (('codfunc', 'codunid'),)


class Consultorio(models.Model):
    codconsult = models.IntegerField(db_column='CodConsult', primary_key=True)  # Field name made lowercase.
    sala = models.CharField(db_column='Sala', max_length=10, blank=True, null=True)  # Field name made lowercase.
    descricao = models.TextField(db_column='Descricao', blank=True, null=True)  # Field name made lowercase.
    codfunc = models.ForeignKey('Funcionario', models.DO_NOTHING, db_column='CodFunc', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Consultorio'


class Enfermeiro(models.Model):
    codfunc = models.OneToOneField('Funcionario', models.DO_NOTHING, db_column='CodFunc', primary_key=True)  # Field name made lowercase.
    coren = models.CharField(db_column='COREN', max_length=20)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Enfermeiro'


class Estoque(models.Model):
    codunid = models.OneToOneField('Remediounidade', models.DO_NOTHING, db_column='CodUnid', primary_key=True)  # Field name made lowercase. The composite primary key (CodUnid, CodRem) found, that is not supported. The first column is selected.
    codrem = models.ForeignKey('Remedios', models.DO_NOTHING, db_column='CodRem')  # Field name made lowercase.
    datacompra = models.DateField(db_column='DataCompra', blank=True, null=True)  # Field name made lowercase.
    quantidade = models.IntegerField(db_column='Quantidade', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Estoque'
        unique_together = (('codunid', 'codrem'),)


class Funcionario(models.Model):
    codfunc = models.IntegerField(db_column='CodFunc', primary_key=True)  # Field name made lowercase.
    nome = models.CharField(db_column='Nome', max_length=60, blank=True, null=True)  # Field name made lowercase.
    vinculo = models.CharField(db_column='Vinculo', max_length=20, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Funcionario'


class Historico(models.Model):
    codhist = models.IntegerField(db_column='CodHist', primary_key=True)  # Field name made lowercase.
    descricao = models.TextField(db_column='Descricao', blank=True, null=True)  # Field name made lowercase.
    status = models.CharField(db_column='STATUS', max_length=20)  # Field name made lowercase.
    codfunc = models.ForeignKey(Funcionario, models.DO_NOTHING, db_column='CodFunc', blank=True, null=True)  # Field name made lowercase.
    data_ini = models.DateField(db_column='Data_ini')  # Field name made lowercase.
    data_fim = models.DateField(db_column='Data_fim', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Historico'


class Medico(models.Model):
    codfunc = models.OneToOneField(Funcionario, models.DO_NOTHING, db_column='CodFunc', primary_key=True)  # Field name made lowercase.
    crm = models.CharField(db_column='CRM', max_length=20)  # Field name made lowercase.
    especializacao = models.CharField(db_column='Especializacao', max_length=50, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Medico'


class Paciente(models.Model):
    codpac = models.IntegerField(db_column='CodPac', primary_key=True)  # Field name made lowercase.
    nomepac = models.CharField(db_column='NomePac', max_length=50, blank=True, null=True)  # Field name made lowercase.
    cpf = models.CharField(db_column='CPF', unique=True, max_length=14)  # Field name made lowercase.
    datanasc = models.DateField(db_column='DataNasc', blank=True, null=True)  # Field name made lowercase.
    endereco = models.TextField(db_column='Endereco', blank=True, null=True)  # Field name made lowercase.
    telefone = models.CharField(db_column='Telefone', max_length=15, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Paciente'


class Remediounidade(models.Model):
    codunid = models.IntegerField(db_column='CodUnid', primary_key=True)  # Field name made lowercase.
    lote = models.CharField(db_column='Lote', max_length=20, blank=True, null=True)  # Field name made lowercase.
    datavenc = models.DateField(db_column='DataVenc')  # Field name made lowercase.
    laboratorio = models.CharField(db_column='Laboratorio', max_length=50, blank=True, null=True)  # Field name made lowercase.
    codrem = models.ForeignKey('Remedios', models.DO_NOTHING, db_column='CodRem', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'RemedioUnidade'


class Remedios(models.Model):
    codrem = models.IntegerField(db_column='CodRem', primary_key=True)  # Field name made lowercase.
    nomerem = models.CharField(db_column='NomeRem', max_length=50, blank=True, null=True)  # Field name made lowercase.
    tipo = models.CharField(db_column='Tipo', max_length=20, blank=True, null=True)  # Field name made lowercase.
    descricao = models.TextField(db_column='Descricao', blank=True, null=True)  # Field name made lowercase.
    controlado = models.IntegerField(db_column='Controlado')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Remedios'


class Setor(models.Model):
    codset = models.IntegerField(db_column='CodSet', primary_key=True)  # Field name made lowercase.
    nomeset = models.CharField(db_column='NomeSet', max_length=20, blank=True, null=True)  # Field name made lowercase.
    local = models.CharField(db_column='Local', max_length=20, blank=True, null=True)  # Field name made lowercase.
    codfunc = models.ForeignKey(Funcionario, models.DO_NOTHING, db_column='CodFunc', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Setor'
