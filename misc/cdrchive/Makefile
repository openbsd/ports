# $OpenBSD: Makefile,v 1.2 2001/09/06 00:05:30 heko Exp $

COMMENT=		"Qt-based CD creation tool"

PKGNAME=		${DISTNAME:S/-OpenBSD//}
DISTNAME=		cdrchive-1.0.1-OpenBSD
CATEGORIES=		misc x11
NEED_VERSION=		1.447

HOMEPAGE=		http://www.drahthaar.clara.net/cdr.htm

MAINTAINER=		Jacob Meuser <jakemsr@clipper.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.drahthaar.clara.net/ \
			ftp://ftp.jakemsr.com/pub/jakemsr/obsd-ports/

MODULES=		qt2

RUN_DEPENDS=		cdrecord::misc/cdrecord

SEPARATE_BUILD=		concurrent

CONFIGURE_STYLE=	gnu 
CONFIGURE_ARGS=		--datadir=${PREFIX}/share/doc/cdrchive \
			--x-includes=${X11BASE}/include \
			--x-libraries=${X11BASE}/lib \
			--with-extra-includes=${LOCALBASE}/include \
			--with-extra-libs=${LOCALBASE}/lib \
			${MODQT_CONFIGURE_ARGS}
MAKE_FLAGS=		CFLAGS="${CXXFLAGS} -c" CLFLAGS=""

WRKDIST=		${WRKDIR}/cdr-bsd

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cdrchive
		${INSTALL_DATA} ${WRKBUILD}/cdr.conf \
			${PREFIX}/share/examples/cdrchive/cdr.conf.sample

.include <bsd.port.mk>
