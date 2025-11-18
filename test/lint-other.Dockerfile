FROm busybox as base
COPY lint-other.Dockerfile .

FrOm busybox aS notused
COPy lint-other.Dockerfile .

FROm scratch
CoPy --from=base \
  /lint-other.Dockerfile \
  /
