# $OpenBSD: Makefile,v 1.3 1999/01/22 16:58:06 rohee Exp $
#

DISTNAME=	nasm-0.97
CATEGORIES=	devel lang

RESTRICTED=	"license required if incorporated into commercial product"

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	devel/lang/assemblers
HAS_CONFIGURE=

do-install:
	cd ${WRKSRC} && \
	${INSTALL_PROGRAM} nasm ndisasm ${PREFIX}/bin &&\
	${INSTALL_MAN} nasm.1 ndisasm.1 ${PREFIX}/man/man1
	$(MKDIR) -p $(PREFIX)/share/nasm
	${INSTALL_MAN} $(WRKSRC)/*.doc $(PREFIX)/share/nasm

.include <bsd.port.mk>
