# $OpenBSD: Makefile,v 1.9 2009/07/22 00:31:57 kurt Exp $

COMMENT=	free, standards-compilant jvm with a small footprint

DISTNAME=	jamvm-1.5.3
PKGNAME=	${DISTNAME}

CATEGORIES=	lang java

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jamvm/}

HOMEPAGE=	http://jamvm.sourceforge.net/

MAINTAINER=	Frederick C. Druseikis <fdruseikis@sc.edu>

# GPL 2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu

USE_LIBTOOL=		Yes

BUILD_DEPENDS=		:jikes->=1.22:lang/jikes
BUILD_DEPENDS+=		:classpath->=0.98:lang/classpath

RUN_DEPENDS=		:classpath->=0.98:lang/classpath

WANTLIB=		c m z pthread

CONFIGURE_ARGS+=	--with-classpath-install-dir=${LOCALBASE}
CONFIGURE_ARGS+=	--libdir=${LOCALBASE}/lib/jamvm
CONFIGURE_ARGS+=	--includedir=${LOCALBASE}/include/jamvm
CONFIGURE_ARGS+=	--disable-tls

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share

.include <bsd.port.mk>
