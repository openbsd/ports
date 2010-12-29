# $OpenBSD: Makefile,v 1.4 2010/12/29 10:26:35 jasper Exp $

COMMENT-main=		high performance webserver written in Erlang, libraries
COMMENT-web=		high performance webserver written in Erlang, docroot

VERSION=		1.89
DISTNAME=		yaws-${VERSION}
PKGNAME-main=		yaws-${VERSION}
REVISION-main=		2
PKGNAME-web=		yaws-web-${VERSION}
CATEGORIES=		www

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://yaws.hyber.org/

# BSD-3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/download/

MULTI_PACKAGES =	-main -web

BUILD_DEPENDS=		${RUN_DEPENDS} \
			textproc/latex2html
RUN_DEPENDS=		lang/erlang

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-pam \
			--disable-sendfile
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

RUN_DEPENDS-main=	${BASE_PKGPATH},-web

USE_GMAKE=		Yes

NO_REGRESS=		Yes

PREFIX-web=		/var

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

# Remove left-over patch file.
pre-install:
	@rm -f ${WRKSRC}/www/doc.yaws.orig

.include <bsd.port.mk>
