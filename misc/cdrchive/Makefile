# $OpenBSD: Makefile,v 1.5 2002/03/30 01:03:35 naddy Exp $

COMMENT=		"Qt-based CD creation tool"

PKGNAME=		${DISTNAME:S/-OpenBSD//}
DISTNAME=		cdrchive-1.0.1-OpenBSD
CATEGORIES=		misc x11
NEED_VERSION=		1.483

HOMEPAGE=		http://www.drahthaar.clara.net/cdr.htm

MAINTAINER=		Jacob Meuser <jakemsr@jakemsr.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.drahthaar.clara.net/ \
			http://www.jakemsr.com/openbsd/ports/

MODULES=		qt2

RUN_DEPENDS=		::misc/cdrecord

SEPARATE_BUILD=		concurrent

CONFIGURE_STYLE=	autoconf
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
