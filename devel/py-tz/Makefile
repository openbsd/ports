# $OpenBSD: Makefile,v 1.2 2004/11/11 03:50:41 djm Exp $

COMMENT=	"Python API for dealing with timezones"

DISTNAME=	pytz-2004d
PKGNAME=	${DISTNAME:S/^py/py-/}
CATEGORIES=    	devel

HOMEPAGE=	http://pytz.sourceforge.net/

MAINTAINER=	Damien Miller <djm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pytz/}

do-regress: fake
	@cd ${WRKSRC}/pytz && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_tzinfo.py

.include <bsd.port.mk>
