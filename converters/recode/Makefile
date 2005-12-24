# $OpenBSD: Makefile,v 1.26 2005/12/24 15:03:42 espie Exp $

COMMENT=	"convert files between character sets and usages"

DISTNAME=	recode-3.6
PKGNAME=	${DISTNAME}p3
SHARED_LIBS=	recode	0.0
MODGNU_SHARED_LIBS=	recode ''

CATEGORIES=	converters textproc

HOMEPAGE=	http://www.gnu.org/software/recode/

MODULES=	devel/gettext

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_GNU:=recode/}

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--without-included-gettext
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
		patch-*

REGRESS_DEPENDS=	:python-2.3*:lang/python/2.3

post-extract:
	@cd ${WRKSRC}/lib && cp -p error.c ../src

post-regress:
	@cd ${WRKBUILD}/tests && ${MAKE} \
		PYTHON=${LOCALBASE}/bin/python bigtest

.include <bsd.port.mk>
