# $OpenBSD: Makefile,v 1.38 2002/08/26 22:33:22 brad Exp $
# $FreeBSD: Makefile,v 1.36 1997/10/04 15:54:31 jkh Exp $
#

PKGPATH=
.if defined(key) || defined(category) || defined(author)

# set up subdirs from the index, assume it's up-to-date
_CMD=perl ${.CURDIR}/infrastructure/build/index-retrieve index='${.CURDIR}/INDEX'
.  if defined(key)
_CMD+=key='${key}'
.  endif
.  if defined(category)
_CMD+=category='${category}'
.  endif
.  if defined(maintainer)
_CMD+=maintainer='${maintainer}'
.  endif
SUBDIR != ${_CMD}
.elif defined(SUBDIRLIST)
SUBDIR != sed -e 's,[ 	]*\#.*,,' -e '/^[ 	]*$$/d' ${SUBDIRLIST}
.else
SUBDIR += archivers
SUBDIR += astro
SUBDIR += audio
SUBDIR += benchmarks
SUBDIR += cad
SUBDIR += chinese
SUBDIR += comms
SUBDIR += converters
SUBDIR += databases
SUBDIR += devel
SUBDIR += editors
SUBDIR += education
SUBDIR += emulators
SUBDIR += games
#SUBDIR += german
SUBDIR += graphics
SUBDIR += japanese
SUBDIR += java
SUBDIR += korean
SUBDIR += lang
SUBDIR += mail
SUBDIR += math
SUBDIR += mbone
SUBDIR += misc
SUBDIR += net
SUBDIR += news
SUBDIR += palm
SUBDIR += plan9
SUBDIR += print
SUBDIR += productivity
SUBDIR += russian
SUBDIR += security
SUBDIR += shells
SUBDIR += sysutils
SUBDIR += textproc
#SUBDIR += vietnamese
SUBDIR += www
SUBDIR += x11
.  if exists(mystuff) && !make(describe) && !make(fetch-makefile)
SUBDIR += mystuff
.  endif
.endif

PORTSTOP?=	yes

.include <bsd.port.subdir.mk>

index:
	@rm -f ${.CURDIR}/INDEX
	@${MAKE} ${.CURDIR}/INDEX

${.CURDIR}/INDEX:
	@echo "Generating INDEX..."
	@${MAKE} describe ECHO_MSG="echo 1>&2" > ${.CURDIR}/INDEX
	@echo "Done."

print-index:	${.CURDIR}/INDEX
	@awk -F\| '{ printf("Port:\t%s\nPath:\t%s\nInfo:\t%s\nMaint:\t%s\nIndex:\t%s\nL-deps:\t%s\nB-deps:\t%s\nR-deps:\t%s\n\n", $$1, $$2, $$4, $$6, $$7, $$8, $$9, $$10); }' < ${.CURDIR}/INDEX

print-licenses: ${.CURDIR}/INDEX
	@printf "Port                                    PC PF DC DF Maint\n"
	@awk -F\| '{printf("%-40.39s%-3.2s%-3.2s%-3.2s%-3.2s%-25.25s\n",$$2,$$12,$$13,$$14,$$15,$$6);}' < ${.CURDIR}/INDEX

search:	${.CURDIR}/INDEX
.if !defined(key)
	@echo "The search target requires a keyword parameter,"
	@echo "e.g.: \"make search key=somekeyword\""
.else
	@egrep -i "${key}" ${.CURDIR}/INDEX | awk -F\| '{ printf("Port:\t%s\nPath:\t%s\nInfo:\t%s\nMaint:\t%s\nIndex:\t%s\nL-deps:\t%s\nB-deps:\t%s\nR-deps:\t%s\nArchs:\t%s\n\n", $$1, $$2, $$4, $$6, $$7, $$8, $$9, $$10, $$11); }'
.endif


MIRROR_MK?= ${.CURDIR}/distfiles/Makefile

mirror-maker:
	@mkdir -p ${MIRROR_MK:H}
# Indirection needed for broken OSes that don't grok this exec
	@echo "EXEC=exec" >${MIRROR_MK}
	@echo "default:: ftp cdrom" >>${MIRROR_MK}
	@echo ".PHONY: default all ftp cdrom" >>${MIRROR_MK}
	@${MAKE} fetch-makefile \
		ECHO_MSG='echo >&2' \
		>>${MIRROR_MK}

homepages.html:
	@echo '<html><ul>' >$@
	@${MAKE} homepage-links ECHO_MSG='echo >&2' >>$@
	@echo '</ul></html>' >>$@

DISTFILES_DB?=${.CURDIR}/infrastructure/db/locate.database

distfiles-update-locatedb:
	@PORTSDIR=${.CURDIR} /bin/sh ${.CURDIR}/infrastructure/fetch/distfiles-update-locatedb ${DISTFILES_DB}

.PHONY: mirror-maker index search distfiles-update-locatedb \
	print-licenses print-index
