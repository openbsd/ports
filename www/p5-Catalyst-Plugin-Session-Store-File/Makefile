# $OpenBSD: Makefile,v 1.2 2006/11/14 10:22:12 espie Exp $

COMMENT= 	"catalyst file storage backend for session data"

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-Store-File-0.08
CATEGORIES=	www

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Cache-Cache \
		::www/p5-Catalyst-Plugin-Session

MAKE_ENV=	TEST_POD=Yes

post-patch:
		cd ${WRKDIST} && ln -sf Build.pl Build.PL

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
