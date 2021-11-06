# $OpenBSD: Makefile,v 1.87 2021/11/06 19:09:10 rsadowski Exp $

.if !defined(BSD_OWN_MK)
.  include <bsd.own.mk>
.endif

PKGPATH =
DISTFILES_DB ?= ${.CURDIR}/infrastructure/db/locate.database
INDEX = ${LOCALBASE}/share/ports-INDEX

.if defined(SUBDIR)
# nothing to do
.elif !make(search) && (defined(key) || defined(name) || defined(category) || defined(author))
# set up subdirs from the index, assume it's up-to-date
_CMD = perl ${.CURDIR}/infrastructure/bin/port-search-helper index='${INDEX}'
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
SUBDIR += wayland
SUBDIR += www
SUBDIR += x11
.endif

.include <bsd.port.subdir.mk>

${INDEX}:
	@if pkg_info -q -e 'portslist-<6.10'; then \
		echo "Old portslist found"; \
		echo "Don't mix -current and 6.4"; \
	fi
	@echo "Please install portslist"
	@echo "${SUDO} pkg_add portslist"
	@exit 1


print-index:	${INDEX}
	@awk -F\| '{ printf("Port:\t%s\nPath:\t%s\nInfo:\t%s\nMaint:\t%s\nIndex:\t%s\nL-deps:\t%s\nB-deps:\t%s\nR-deps:\t%s\n\n", $$1, $$2, $$4, $$6, $$7, $$8, $$9, $$10); }' < ${INDEX}

print-licenses: ${INDEX}
	@printf "Port                                    PC PF DC DF Maint\n"
	@awk -F\| '{printf("%-40.39s%-3.2s%-3.2s%-3.2s%-3.2s%-25.25s\n",$$2,$$12,$$13,$$14,$$15,$$6);}' < ${INDEX}

search:	${INDEX}
.if !defined(key) && !defined(name)
	@echo "The search target requires a keyword or name parameter,"
	@echo "e.g.: \"make search key=somekeyword\" \"make search name=somename\""
.else
.  if defined(key)
	@egrep -i -- "${key}" ${INDEX} | awk -F\| '{ printf("Port:\t%s\nPath:\t%s\nInfo:\t%s\nMaint:\t%s\nIndex:\t%s\nL-deps:\t%s\nB-deps:\t%s\nR-deps:\t%s\nArchs:\t%s\n\n", $$1, $$2, $$4, $$6, $$7, $$8, $$9, $$10, $$11); }'
.  else
	@awk -F\| '$$1 ~ /${name}/ { printf("Port:\t%s\nPath:\t%s\nInfo:\t%s\nMaint:\t%s\nIndex:\t%s\nL-deps:\t%s\nB-deps:\t%s\nR-deps:\t%s\nArchs:\t%s\n\n", $$1, $$2, $$4, $$6, $$7, $$8, $$9, $$10, $$11); }' ${INDEX}
.  endif
.endif

fix-permissions:
	@{ echo "DUMMY_PACKAGE=Yes"; \
	echo ".include <bsd.port.mk>"; }|${MAKE} -f - fix-permissions

distfiles-update-locatedb:
	@PORTSDIR=${.CURDIR} /bin/sh ${.CURDIR}/infrastructure/fetch/distfiles-update-locatedb ${DISTFILES_DB}

create_DEPENDS_CACHE:
	@${_mk_DEPENDS_CACHE}; echo $${_DEPENDS_CACHE}

destroy_DEPENDS_CACHE:
	@${_PBUILD} rm -rf 2>/dev/null $${_DEPENDS_CACHE}


.PHONY: index search distfiles-update-locatedb \
	print-licenses print-index fix-permissions \
	create_DEPENDS_CACHE destroy_DEPENDS_CACHE
