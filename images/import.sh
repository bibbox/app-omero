./omero -s localhost -u root login -w omero
DID=$(./omero obj new Dataset name=annotation_dummies)
./omero import -d $DID --transfer=ln_s OMERO/share
