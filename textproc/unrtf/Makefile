# $OpenBSD: Makefile,v 1.16 2016/04/09 20:14:49 naddy Exp $

COMMENT=	RTF document converter

DISTNAME=	unrtf-0.21.9
CATEGORIES=	textproc

HOMEPAGE=	https://www.gnu.org/software/unrtf/unrtf.html

MASTER_SITES=	${MASTER_SITE_GNU:=unrtf/}

# GPLv3+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c iconv

LIB_DEPENDS=	converters/libiconv

CONFIGURE_STYLE= gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

# rm/bootstrap are only done because of symlinks to /usr/share/auto*
# in ${WRKSRC}/config for missing/etc.
#
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.13

post-patch:
	rm ${WRKSRC}/config/*
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./bootstrap

.include <bsd.port.mk>
