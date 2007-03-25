# $OpenBSD: Makefile,v 1.8 2007/03/25 10:21:40 djm Exp $

COMMENT=	"Python API for dealing with timezones"

DISTNAME=	pytz-2006p
PKGNAME=	${DISTNAME:S/^py/py-/}
CATEGORIES=    	devel

HOMEPAGE=	http://pytz.sourceforge.net/

MAINTAINER=	Damien Miller <djm@openbsd.org>

MODULES=	lang/python

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pytz/}

do-regress: fake
	@cd ${WRKSRC}/pytz/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_tzinfo.py

.include <bsd.port.mk>
