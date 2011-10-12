# $OpenBSD: Makefile,v 1.56 2011/10/12 10:14:30 dcoppa Exp $

COMMENT =	retrieve files from the web via HTTP, HTTPS and FTP

DISTNAME =	wget-1.13.4
CATEGORIES =	net

HOMEPAGE =	http://www.gnu.org/software/wget/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c crypto idn ssl z
LIB_DEPENDS =		devel/libidn

MASTER_SITES =		${MASTER_SITE_GNU:=wget/}

MODULES =		devel/gettext

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	--with-ssl=openssl
USE_GROFF =		Yes

pre-build:
	@${SUBST_CMD} ${WRKSRC}/doc/wget.texi ${WRKSRC}/doc/sample.wgetrc

.include <bsd.port.mk>
