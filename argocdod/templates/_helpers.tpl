{{- define "cluster_name" -}}
{{- $matches := split "." ( .Values.spec.destination.server | toString ) -}}
{{- $matches._1 -}}
{{- end -}}

{{- define "cluster_fqdn" -}}
{{- $match := .Values.spec.destination.server | toString | regexFind "//.*:" -}}
{{- $match | trimAll ":" | trimAll "/" -}}
{{- end -}}
