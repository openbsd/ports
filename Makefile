# $OpenBSD: Makefile,v 1.62 2009/10/12 10:25:40 espie Exp $
# $FreeBSD: Makefile,v 1.36 1997/10/04 15:54:31 jkh Exp $
#

PKGPATH =
MIRROR_MK ?= ${.CURDIR}/distfiles/Makefile
PORTSTOP ?= yes
DISTFILES_DB ?= ${.CURDIR}/infrastructure/db/locate.database


.if defined(SUBDIR)
# nothing to do
.elif defined(key) || defined(name) || defined(category) || defined(author)

# set up subdirs from the index, assume it's up-to-date
_CMD = perl ${.CURDIR}/infrastructure/build/index-retrieve index='${.CURDIR}/INDEX'
.  if defined(key)
_CMD += key='${key}'
.  endif
.  if defined(name)
_CMD += maintainer='${name}'
.  endif
.  if defined(category)
_CMD += category='${category}'
.  endif
.  if defined(maintainer)
_CMD += maintainer='${maintainer}'
.  endif
SUBDIR != ${_CMD}
.elif defined(SUBDIRLIST)
SUBDIR != sed -e 's,[ 	]*\#.*,,' -e '/^[ 	]*$$/d' ${SUBDIRLIST}
.else
SUBDIR += archivers
SUBDIR += astro
SUBDIR += audio
SUBDIR += benchmarks
SUBDIR += biology
SUBDIR += books
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
SUBDIR += geo
SUBDIR += graphics
SUBDIR += inputmethods
SUBDIR += japanese
SUBDIR += java
SUBDIR += korean
SUBDIR += lang
SUBDIR += mail
SUBDIR += math
SUBDIR += misc
SUBDIR += multimedia
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
SUBDIR += telephony
SUBDIR += textproc
SUBDIR += www
SUBDIR += x11
.endif

.include <bsd.port.subdir.mk>

index:
	@rm -f ${.CURDIR}/INDEX
	@${MAKE} ${.CURDIR}/INDEX

${.CURDIR}/INDEX:
	@echo "Generating INDEX..."
	@${MAKE} describe MACHINE_ARCH=i386 ECHO_MSG="echo 1>&2" > ${.CURDIR}/INDEX
	@echo "Done."

print-index:	${.CURDIR}/INDEX
	@awk -F\| '{ printf("Port:\t%s\nPath:\t%s\nInfo:\t%s\nMaint:\t%s\nIndex:\t%s\nL-deps:\t%s\nB-deps:\t%s\nR-deps:\t%s\n\n", $$1, $$2, $$4, $$6, $$7, $$8, $$9, $$10); }' < ${.CURDIR}/INDEX

print-licenses: ${.CURDIR}/INDEX
	@printf "Port                                    PC PF DC DF Maint\n"
	@awk -F\| '{printf("%-40.39s%-3.2s%-3.2s%-3.2s%-3.2s%-25.25s\n",$$2,$$12,$$13,$$14,$$15,$$6);}' < ${.CURDIR}/INDEX

search:	${.CURDIR}/INDEX
.if !defined(key) && !defined(name)
	@echo "The search target requires a keyword or name parameter,"
	@echo "e.g.: \"make search key=somekeyword\" \"make search name=somename\""
.else
.  if defined(key)
	@egrep -i -- "${key}" ${.CURDIR}/INDEX | awk -F\| '{ printf("Port:\t%s\nPath:\t%s\nInfo:\t%s\nMaint:\t%s\nIndex:\t%s\nL-deps:\t%s\nB-deps:\t%s\nR-deps:\t%s\nArchs:\t%s\n\n", $$1, $$2, $$4, $$6, $$7, $$8, $$9, $$10, $$11); }'
.  else
	@awk -F\| '$$1 ~ /${name}/ { printf("Port:\t%s\nPath:\t%s\nInfo:\t%s\nMaint:\t%s\nIndex:\t%s\nL-deps:\t%s\nB-deps:\t%s\nR-deps:\t%s\nArchs:\t%s\n\n", $$1, $$2, $$4, $$6, $$7, $$8, $$9, $$10, $$11); }' ${.CURDIR}/INDEX
.  endif
.endif

LOCKDIR ?=

mirror-maker:
	@mkdir -p ${MIRROR_MK:H}
.if !empty(LOCKDIR)
	@echo "EXEC = " >${MIRROR_MK}
	@echo 'LOCKDIR = ${LOCKDIR}' >>${MIRROR_MK}
	@echo 'PORTSDIR = ${PORTSDIR}' >>${MIRROR_MK}
	@echo 'LOCK_CMD = perl $${PORTSDIR}/infrastructure/build/dolock' >>${MIRROR_MK}
	@echo 'UNLOCK_CMD = rm -f' >>${MIRROR_MK}
	@echo 'SIMPLE_LOCK = $${LOCK_CMD} $${LOCKDIR}/$$$$lock.lock; trap "$${UNLOCK_CMD} $${LOCKDIR}/$$$$lock.lock" 0 1 2 3 13 15' >>${MIRROR_MK}
.else
	@echo "EXEC = exec" >${MIRROR_MK}
	@echo 'SIMPLE_LOCK = :' >>${MIRROR_MK}
.endif

	@echo '' >>${MIRROR_MK}
	@echo "default:: ftp cdrom" >>${MIRROR_MK}
	@echo ".PHONY: default all ftp cdrom .FORCE" >>${MIRROR_MK}
	@echo ".FORCE:" >>${MIRROR_MK}
	@_DONE_FILES=`mktemp /tmp/depends.XXXXXXXXX|| exit 1`; \
	export _DONE_FILES; \
	trap "rm -f $${_DONE_FILES}" 0 1 2 3 13 15; \
	${MAKE} fetch-makefile \
		ECHO_MSG='echo >&2' \
		_FETCH_MAKEFILE=${MIRROR_MK}

homepages.html:
	@echo '<html><ul>' >$@
	@${MAKE} homepage-links ECHO_MSG='echo >&2' >>$@
	@echo '</ul></html>' >>$@

distfiles-update-locatedb:
	@PORTSDIR=${.CURDIR} /bin/sh ${.CURDIR}/infrastructure/fetch/distfiles-update-locatedb ${DISTFILES_DB}

pkglocatedb:
	@pkg_mklocatedb -a -d ${.CURDIR}/packages/${MACHINE_ARCH}/all/ \
	    >${.CURDIR}/packages/${MACHINE_ARCH}/ftp/pkglocatedb

.PHONY: mirror-maker index search distfiles-update-locatedb \
	pkglocatedb print-licenses print-index
