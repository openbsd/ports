# $OpenBSD: Makefile,v 1.75 2015/04/13 13:46:58 naddy Exp $

.if !defined(BSD_OWN_MK)
.  include <bsd.own.mk>
.endif

PKGPATH =
MIRROR_MK ?= ${.CURDIR}/distfiles/Makefile
DISTFILES_DB ?= ${.CURDIR}/infrastructure/db/locate.database

.if defined(SUBDIR)
# nothing to do
.elif defined(key) || defined(name) || defined(category) || defined(author)

# set up subdirs from the index, assume it's up-to-date
_CMD = perl ${.CURDIR}/infrastructure/bin/retrieve-index index='${.CURDIR}/INDEX'
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
SUBDIR += fonts
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
SUBDIR += meta
SUBDIR += misc
SUBDIR += multimedia
SUBDIR += net
SUBDIR += news
SUBDIR += plan9
SUBDIR += print
SUBDIR += productivity
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
	@${_MAKE} USE_CCACHE=No ${.CURDIR}/INDEX

${.CURDIR}/INDEX:
	@echo "Generating INDEX..."
	@${_MAKE} describe MACHINE_ARCH=amd64 ECHO_MSG="echo 1>&2" > ${.CURDIR}/INDEX
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

homepages.html:
	@echo '<html><ul>' >$@
	@${_MAKE} homepage-links ECHO_MSG='echo >&2' >>$@
	@echo '</ul></html>' >>$@

distfiles-update-locatedb:
	@PORTSDIR=${.CURDIR} /bin/sh ${.CURDIR}/infrastructure/fetch/distfiles-update-locatedb ${DISTFILES_DB}

pkglocatedb:
	@pkg_mklocatedb -a -d ${.CURDIR}/packages/${MACHINE_ARCH}/all/ \
	    >${.CURDIR}/packages/${MACHINE_ARCH}/ftp/pkglocatedb

.PHONY: index search distfiles-update-locatedb \
	pkglocatedb print-licenses print-index
