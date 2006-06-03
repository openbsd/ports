# $OpenBSD: Makefile,v 1.7 2006/06/03 09:37:09 alek Exp $

COMMENT=	"Python API for dealing with timezones"

DISTNAME=	pytz-2005m
PKGNAME=	${DISTNAME:S/^py/py-/}p0
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
