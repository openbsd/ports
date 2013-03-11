# $OpenBSD: Makefile,v 1.35 2013/03/11 01:30:28 espie Exp $

COMMENT=	convert files between character sets and usages

DISTNAME=	recode-3.6
REVISION =	7
SHARED_LIBS +=	recode               0.0      # .0.0

CATEGORIES=	converters textproc

HOMEPAGE=	http://recode.progiciels-bpi.ca

MODULES=	devel/gettext \
		lang/python

# (L)GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

# moved to https://github.com/pinard/Recode/
MASTER_SITES=	${MASTER_SITE_GNU:=recode/}

USE_LIBTOOL=	Yes
MODPY_RUNDEP=	No

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--without-included-gettext
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@cd ${WRKSRC}/lib && cp -p error.c ../src

post-test:
	@cd ${WRKBUILD}/tests && ${MAKE} \
		PYTHON=${MODPY_BUILD} bigtest

.include <bsd.port.mk>
