# $OpenBSD: Makefile,v 1.5 2003/07/06 22:46:14 pvalchev Exp $
# $FreeBSD: ports/devel/ffcall/Makefile,v 1.2 2001/08/31 14:20:18 sobomax Exp $
# Original From:                jagapen@home.com

.if ${MACHINE_ARCH:Mm68k}
BROKEN=		"mmap configure test causes system hang"
.endif

COMMENT=	"foreign function call libraries"

DISTNAME=	ffcall-1.8
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.ilog.fr/pub/Users/haible/gnu/
HOMEPAGE=	http://www.haible.de/bruno/packages-ffcall.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autoconf

FAKE_FLAGS=	${DESTDIRNAME}=${WRKINST} \
		LIBTOOL="${LIBTOOL} ${LIBTOOL_FLAGS}" \
		htmldir="\$$(datadir)/doc/ffcall/html"

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ffcall/html

.include <bsd.port.mk>
