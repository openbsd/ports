# $OpenBSD: Makefile,v 1.10 2002/05/13 23:31:25 espie Exp $

COMMENT=		"modules for parsing (and creating!) MIME entities"

DISTNAME=		MIME-tools-5.411a
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		mail perl5
NEED_VERSION=		1.503

HOMEPAGE=		http://www.zeegee.com/code/perl/MIME-tools/

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=MIME/}

BUILD_DEPENDS=	::mail/p5-Mail-Tools  \
		::converters/p5-MIME-Base64 \
		::devel/p5-IO-stringy
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= 	perl
WRKSRC=		${WRKDIR}/${DISTNAME:S/a//}

.include <bsd.port.mk>
