# $OpenBSD: Makefile,v 1.10 2002/07/10 20:48:16 avsm Exp $

COMMENT=		"highly customizable e-mail to HTML converter"

DISTNAME=		MHonArc2.4.9
PKGNAME=		mhonarc-2.4.9
CATEGORIES=     	www mail
NEED_VERSION=		1.515

HOMEPAGE=		http://www.mhonarc.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.mhonarc.org/tar/ \
			http://www.oac.uci.edu/indiv/ehood/tar/ \
			ftp://ftp.plig.org/pub/CPAN/authors/id/EHOOD/ 

BUILD_DEPENDS=		:p5-Digest-MD5-*:security/p5-Digest-MD5
RUN_DEPENDS=		${BUILD_DEPENDS}

post-extract:
			@chmod -R u+w ${WRKDIST}

CONFIGURE_STYLE=	perl
ALL_TARGET=		default

.include <bsd.port.mk>
