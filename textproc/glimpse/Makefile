# $OpenBSD: Makefile,v 1.9 2000/10/22 16:16:30 espie Exp $
#

DISTNAME=	glimpse-4.1
CATEGORIES=	textproc databases
NEED_VERSION=	1.305

MAINTAINER=	Tobias Weingartner <weingart@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ftp://ftp.cs.arizona.edu/glimpse/
DISTFILES=	glimpse-4.1.src.tar.gz

CONFIGURE_STYLE=	gnu dest

pre-configure:
	chmod ugo+x ${WRKSRC}/configure

pre-build:
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "*** ./main.c:3041: virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/glimpse
	${INSTALL_DATA} ${WRKSRC}/COPYRIGHT ${PREFIX}/share/doc/glimpse
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/glimpse
	${INSTALL_PROGRAM} ${WRKSRC}/index/wgconvert ${PREFIX}/bin

.include <bsd.port.mk>
