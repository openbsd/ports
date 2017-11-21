# $OpenBSD: Makefile,v 1.41 2017/11/21 00:12:59 naddy Exp $

COMMENT=	convert files between character sets and usages

DISTNAME=	recode-3.6
REVISION =	11
SHARED_LIBS +=	recode               0.0      # .0.0

CATEGORIES=	converters textproc

HOMEPAGE=	http://recode.progiciels-bpi.ca

MODULES=	lang/python

# (L)GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=  c iconv intl

# moved to https://github.com/pinard/Recode/
MASTER_SITES=	${MASTER_SITE_GNU:=recode/}

MODPY_RUNDEP=	No

LIB_DEPENDS=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--without-included-gettext
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@cd ${WRKSRC}/lib && cp -p error.c ../src

post-test:
	@cd ${WRKBUILD}/tests && ${MAKE_PROGRAM} PYTHON=${MODPY_BIN} bigtest

.include <bsd.port.mk>
