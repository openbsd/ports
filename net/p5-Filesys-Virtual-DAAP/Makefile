# $OpenBSD: Makefile,v 1.3 2006/12/17 20:13:33 kili Exp $
PKG_ARCH=	*

COMMENT=	"presents a DAAP share as a VFS"
DISTNAME=	Filesys-Virtual-DAAP-0.04
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Filesys/}

# same as perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	:p5-Class-Accessor-*:devel/p5-Class-Accessor \
		:p5-Net-DAAP-Client-*:net/p5-Net-DAAP-Client \
		:p5-Filesys-Virtual-Plain-*:sysutils/p5-Filesys-Virtual-Plain
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=perl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Filesys-Virtual-DAAP
	${INSTALL} ${WRKSRC}/ftp_republish \
		${PREFIX}/share/examples/p5-Filesys-Virtual-DAAP

.include <bsd.port.mk>
