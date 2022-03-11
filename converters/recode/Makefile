COMMENT=	convert files between character sets and usages

DISTNAME=	recode-3.6
REVISION =	12
SHARED_LIBS +=	recode               0.0      # .0.0

CATEGORIES=	converters textproc

HOMEPAGE=	http://recode.progiciels-bpi.ca

MODULES=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

# (L)GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=  c iconv intl

# moved to https://github.com/pinard/Recode/
MASTER_SITES=	${MASTER_SITE_GNU:=recode/}

MODPY_RUNDEP=	No

LIB_DEPENDS=	devel/gettext,-runtime

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--without-included-gettext
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@cd ${WRKSRC}/lib && cp -p error.c ../src

post-test:
	@cd ${WRKBUILD}/tests && ${MAKE_PROGRAM} PYTHON=${MODPY_BIN} bigtest

.include <bsd.port.mk>
