# $OpenBSD: Makefile,v 1.3 2001/03/29 17:37:40 avsm Exp $

COMMENT=		"modules for parsing (and creating!) MIME entities"

DISTNAME=		MIME-tools-5.410
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		converters perl5
NEED_VERSION=		1.364

MAINTAINER=		Shell Hung <i@shellhung.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= 	MIME

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	${PERL_MODULES}/Mail/Mailer.pm::mail/p5-Mail-Tools  \
		${PERL_MODULES}/${ARCH}-openbsd/MIME/Base64.pm::converters/p5-MIME-Base64 \
		${PERL_MODULES}/IO/Stringy.pm::devel/p5-IO-stringy
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= 	perl

.include <bsd.port.mk>
