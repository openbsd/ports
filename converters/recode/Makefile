# $OpenBSD: Makefile,v 1.32 2010/10/18 17:06:06 espie Exp $

COMMENT=	convert files between character sets and usages

DISTNAME=	recode-3.6
REVISION =	5
SHARED_LIBS +=	recode               0.0      # .0.0

CATEGORIES=	converters textproc

HOMEPAGE=	http://www.gnu.org/software/recode/

MODULES=	devel/gettext \
		lang/python

# (L)GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_GNU:=recode/}

USE_LIBTOOL=	Yes
USE_GROFF =	Yes
MODPY_RUNDEP=	No

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--without-included-gettext
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@cd ${WRKSRC}/lib && cp -p error.c ../src

post-regress:
	@cd ${WRKBUILD}/tests && ${MAKE} \
		PYTHON=${MODPY_BUILD} bigtest

.include <bsd.port.mk>
