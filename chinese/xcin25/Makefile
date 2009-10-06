# $OpenBSD: Makefile,v 1.6 2009/10/06 15:52:41 sturm Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	Chinese input method Linux binary

PKGNAME=	zh-xcin25-2.5.3p1
CATEGORIES=	chinese

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://download.fedoralegacy.org/redhat/8.0/os/i386/
DISTFILES=	${RPMS}
EXTRACT_ONLY=

DIST_SUBDIR=	rpm

BUILD_DEPENDS=	::converters/rpm2cpio
RUN_DEPENDS=	::chinese/rxvt-big5

NO_BUILD=	Yes
NO_REGRESS=	Yes

PREFIX=		${LOCALBASE}/emul/fedora

RPMDIR=		${FULLDISTDIR}

RPMS=		db4-4.0.14-14.i386.rpm \
		libtabe-0.2.6-1.i386.rpm \
		xcin-2.5.3.pre3-6.i386.rpm

REMOVE_DIRS=	/usr/doc /usr/man /usr/share/doc 

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}
.for rpm in ${RPMS}
	@cd ${PREFIX}; ${LOCALBASE}/bin/rpm2cpio ${RPMDIR}/${rpm} | cpio -id
.endfor     

# Get rid of some unnecessary files and directories.
.for D in ${REMOVE_DIRS}
	@rm -rf ${PREFIX}/${D}
.endfor

.include <bsd.port.mk>
