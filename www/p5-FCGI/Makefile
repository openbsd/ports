COMMENT =	module for enabling FastCGI support in CGI scripts
DISTNAME =	FCGI-0.82
REVISION =	0
FIX_EXTRACT_PERMISSIONS =	Yes
CATEGORIES =	www

MAINTAINER =	Robert Nagy <robert@openbsd.org>

# Open Market
PERMIT_PACKAGE =	Yes

MODULES =	cpan

WANTLIB =	c fcgi perl

LIB_DEPENDS =	www/fcgi

CONFIGURE_ARGS =	--use-installed=${LOCALBASE}

NO_TEST =	Yes

# included FastCGI library is affected by CVE-2025-23016, see CVE-2025-40907
pre-configure:
	rm -- ${WRKSRC}/fastcgi.h ${WRKSRC}/fcgi* ${WRKSRC}/os_*

.include <bsd.port.mk>
