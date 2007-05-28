# $OpenBSD: Makefile,v 1.2 2007/05/28 23:21:21 ajacoutot Exp $

COMMENT=	"generic spell checking library/wrapper"

DISTNAME=	enchant-1.3.0
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=	enchant              4.0      # .4.0
CATEGORIES=	textproc

HOMEPAGE=	http://www.abisource.com/projects/enchant/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.abisource.com/downloads/enchant/1.3.0/

WANTLIB=	c m stdc++

LIB_DEPENDS=	aspell.>=16::textproc/aspell/core \
		glib-2.0,gmodule-2.0::devel/glib2

MODULES=	devel/gettext
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lstdc++ -lm"
CONFIGURE_ARGS=	--enable-aspell \
		--with-aspell-prefix=${LOCALBASE} \
		--enable-ispell \
		--with-ispell-dir=${LOCALBASE}/lib/ispell/ \
		--disable-myspell \
		--disable-uspell \
		--disable-hspell

pre-configure:
	perl -pi -e 's,MKDIRPROG-mkdir,MKDIRPROG-mkdir -p,g' \
		${WRKSRC}/install-sh
	perl -pi -e 's,\$$\(datadir\),${LOCALBASE}/share,g' \
		${WRKSRC}/doc/enchant.1

.include <bsd.port.mk>
