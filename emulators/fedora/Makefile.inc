# $OpenBSD: Makefile.inc,v 1.11 2013/03/11 12:27:54 sthen Exp $

# Note that PLIST with shared libs requires the following cleaning:
# perl -pi -e "s,^\@lib ,," pkg/PLIST

ONLY_FOR_ARCHS=	i386
SHARED_ONLY=	Yes

FEDORA_V ?=	10
FEDORADIR ?=	${PREFIX}/emul/fedora

CATEGORIES=	emulators

PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITE_FEDORA=	http://archives.fedoraproject.org/pub/archive/fedora/linux/releases/${FEDORA_V}/Fedora/i386/os/Packages/
MASTER_SITE_FEDORA0=	http://archives.fedoraproject.org/pub/archive/fedora/linux/updates/${FEDORA_V}/i386/

MASTER_SITES ?=		${MASTER_SITE_FEDORA}
MASTER_SITES0 ?=	${MASTER_SITE_FEDORA0}

DISTFILES ?=	${RPMS}
RPMDIR ?=	${FULLDISTDIR}

DIST_SUBDIR=	rpm
EXTRACT_ONLY=

BUILD_DEPENDS+=	rpm-*|rpm2cpio-*:converters/rpm2cpio \
		archivers/gcpio

NO_BUILD=	Yes
NO_TEST=	Yes

.if !target(do-install)
do-install:
	${INSTALL_DATA_DIR} ${FEDORADIR}
.for rpm in ${RPMS:S/:0//}
	cd ${FEDORADIR}; rpm2cpio ${RPMDIR}/${rpm} | ${LOCALBASE}/bin/gcpio -id
.endfor

# get rid of some unnecessary files and directories
.for D in ${REMOVE_DIRS}
	rm -rf ${FEDORADIR}/${D}
.endfor
.for F in ${REMOVE_FILES}
	rm -f ${FEDORADIR}/${F}
.endfor
.for D in ${ADD_DIRS}
	mkdir -p ${FEDORADIR}/${D}
.endfor

# better safe than sorry
	find ${FEDORADIR} -perm -4000 | xargs -r chmod u-s
	find ${FEDORADIR} \( -user 37 -o -user 5041 -o -group 37 \) -print | \
		xargs -r chown -h root:wheel
.endif
