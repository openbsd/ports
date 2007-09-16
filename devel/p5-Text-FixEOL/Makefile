# $OpenBSD: Makefile,v 1.2 2007/09/16 02:53:10 merdely Exp $

COMMENT= 	canonical EOL/EOF

MODULES=	cpan 

DISTNAME=	Text-FixEOL-1.05
CATEGORIES=	devel textproc
CONFIGURE_STYLE=modbuild

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
