{{/*
Hub content, Redis, and PostgreSQL storage for the validated patterns
OpenShift Data Foundations chart. That chart creates:
  ocs-storagecluster-cephfs   ReadWriteMany filesystem (hub content)
  ocs-storagecluster-ceph-rbd ReadWriteOnce block (Redis and hub PostgreSQL)
*/}}
{{- define "aap.hubStorage" -}}
storage_type: {{ .Values.hub.storageType }}
file_storage_access_mode: {{ .Values.hub.fileStorageAccessMode }}
file_storage_size: {{ .Values.hub.fileStorageSize }}
file_storage_storage_class: {{ .Values.hub.fileStorageStorageClass }}
redis_storage_class: {{ .Values.hub.redisStorageClass }}
redis_storage_size: {{ .Values.hub.redisStorageSize }}
postgres_storage_class: {{ .Values.hub.postgresStorageClass }}
{{- end -}}
