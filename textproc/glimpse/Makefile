# $OpenBSD: Makefile,v 1.5 2000/02/10 15:16:47 espie Exp $
#

DISTNAME=	glimpse-4.1
CATEGORIES=	textproc databases

NO_CDROM=	"NOFEE:	Can not sell"

MAINTAINER=	weingart@openbsd.org

MASTER_SITES=   ftp://ftp.cs.arizona.edu/glimpse/
DISTFILES=	glimpse-4.1.src.tar.gz

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--prefix=${PREFIX}

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
