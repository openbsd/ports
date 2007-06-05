# $OpenBSD: Makefile,v 1.2 2007/06/05 18:25:22 bernd Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"GRand Unified Bootloader"

DISTNAME=	grub-0.97
PKGNAME=	${DISTNAME}p0
CATEGORIES=	sysutils

HOMEPAGE=	http://www.gnu.org/software/grub/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c ncurses util

MASTER_SITES=	ftp://alpha.gnu.org/gnu/grub/ \
		ftp://ftp.funet.fi/pub/gnu/alpha/gnu/grub/ \
		ftp://ftp.ibiblio.org/pub/mirrors/gnu/alpha/gnu/grub/

CONFIGURE_STYLE=gnu

CFLAGS=		-ftrampolines -fno-stack-protector

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/grub
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/grub
	@perl -pi -e "s,%%TRUEPREFIX%%,${TRUEPREFIX}," \
		${PREFIX}/share/doc/grub/README.OpenBSD
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/grub
	${INSTALL_DATA} ${FILESDIR}/menu.lst ${PREFIX}/share/examples/grub

.include <bsd.port.mk>
