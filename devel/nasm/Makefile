# OpenBSD makefile for:	nasm
# Version required:    0.97
# Date created:        May 21 1998
# Whom:                Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/22 01:41:14 angelos Exp $
#

DISTNAME=	nasm-0.97
CATEGORIES=	devel lang
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	devel/lang/assemblers
HAS_CONFIGURE=

MAINTAINER=	angelos@openbsd.org

MAN1=		nasm.1 ndisasm.1

do-install:
	cd ${WRKSRC} && \
	${INSTALL_PROGRAM} nasm ndisasm ${PREFIX}/bin &&\
	${INSTALL_MAN} nasm.1 ndisasm.1 ${PREFIX}/man/man1
	$(MKDIR) -p $(PREFIX)/share/nasm
	${INSTALL_MAN} $(WRKSRC)/*.doc $(PREFIX)/share/nasm

.include <bsd.port.mk>
