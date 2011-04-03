# $OpenBSD: Makefile,v 1.5 2011/04/03 17:29:30 jasper Exp $

COMMENT=		Base32 encoder/decoder

DISTNAME=		MIME-Base32-1.02a
PKGNAME=		p5-${DISTNAME:S/a$//}
CATEGORIES=		mail

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

WRKDIST=		${WRKDIR}/${DISTNAME:S/a$//}

.include <bsd.port.mk>
