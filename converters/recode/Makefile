# $OpenBSD: Makefile,v 1.21 2002/12/23 00:37:50 pvalchev Exp $

COMMENT=	"convert files between character sets and usages"

DISTNAME=	recode-3.6
CATEGORIES=	converters textproc

HOMEPAGE=	http://www.gnu.org/software/recode/

MODULES=	gettext

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=recode/}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--without-included-gettext
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
		patch-*

REGRESS_DEPENDS=	:python-*:lang/python

post-regress:
	@cd ${WRKBUILD}/tests && ${MAKE} \
		PYTHON=${LOCALBASE}/bin/python bigtest

.include <bsd.port.mk>
