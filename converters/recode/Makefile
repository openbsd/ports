# $OpenBSD: Makefile,v 1.25 2005/01/28 21:00:28 alek Exp $

COMMENT=	"convert files between character sets and usages"

DISTNAME=	recode-3.6
PKGNAME=	${DISTNAME}p2

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
