# $OpenBSD: Makefile,v 1.40 2016/07/31 21:35:11 sthen Exp $

COMMENT=		Abstract Syntax Notation One structure parser library

DISTNAME=		libtasn1-4.9
CATEGORIES=		security

SHARED_LIBS +=  tasn1                3.5      # 11.2

HOMEPAGE=		https://www.gnu.org/software/gnutls/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=		${MASTER_SITE_GNU:=libtasn1/}

CONFIGURE_STYLE=	gnu

### patch-configure_ac
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool \
			devel/help2man

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -fi
###

.include <bsd.port.mk>
