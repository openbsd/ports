# $OpenBSD: Makefile,v 1.59 2013/03/11 11:35:58 espie Exp $

COMMENT =	retrieve files from the web via HTTP, HTTPS and FTP

DISTNAME =	wget-1.14
CATEGORIES =	net

HOMEPAGE =	http://www.gnu.org/software/wget/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto idn pcre ssl z
LIB_DEPENDS =		devel/libidn \
			devel/pcre

MASTER_SITES =		${MASTER_SITE_GNU:=wget/}

MODULES =		devel/gettext

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	--with-ssl=openssl

pre-build:
	@${SUBST_CMD} ${WRKSRC}/doc/wget.texi ${WRKSRC}/doc/sample.wgetrc

.include <bsd.port.mk>
