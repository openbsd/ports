# OpenBSD makefile for:	wget
# Version required:	1.5.2
# Date created:		December 6, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/06/27 23:03:39 angelos Exp $
#

DISTNAME=	wget-1.5.2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GNU}

MAINTAINER=	angelos@openbsd.org

GNU_CONFIGURE=	yes
MAN1=		wget.1

post-install:
	if [ ! -f ${PREFIX}/info/dir ]; then \
		sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi
	-install-info ${PREFIX}/info/wget.info ${PREFIX}/info/dir

.include <bsd.port.mk>
