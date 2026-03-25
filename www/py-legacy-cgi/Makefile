COMMENT=	support module for CGI scripts

# Please do not use this blindly, it was removed from Python core for
# a reason. See https://peps.python.org/pep-0594/#cgi which has direct
# replacements for many common use-cases:
# parse, parse_header, parse_multipart, valid_boundary.
#
# Also for those using FieldStorage/MiniFieldStorage, see if upstream
# of the relevant software has code that can use py-multipart instead.

MODPY_DISTV=	2.6.4
DISTNAME=	legacy_cgi-${MODPY_DISTV}
PKGNAME=	py-legacy-cgi-${MODPY_DISTV}
CATEGORIES=	www

HOMEPAGE=	https://github.com/jackrosenthal/legacy-cgi

# PSF-2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

.include <bsd.port.mk>
