# $OpenBSD: Makefile,v 1.1.1.1 2005/03/30 07:22:19 jolan Exp $
PKG_ARCH=	*

COMMENT=	"alternative interface to File::Find"
DISTNAME=	File-Find-Rule-0.28
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=File/}

# same as perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS=	:p5-Number-Compare-*:devel/p5-Number-Compare \
		:p5-Text-Glob-*:textproc/p5-Text-Glob
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
