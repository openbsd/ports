# $OpenBSD: Makefile,v 1.5 2014/09/17 09:13:12 ajacoutot Exp $

COMMENT=	sendmail milter plugin for recipient checking

DISTNAME=	milter-checkrcpt-0.3
REVISION=	1
CATEGORIES=	mail
MASTER_SITES=	http://www.benzedrine.cx/

HOMEPAGE=	http://www.benzedrine.cx/milter-checkrcpt.html

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c milter pthread

LIB_DEPENDS=	mail/sendmail,-libmilter

NO_TEST=	Yes

MAKE_FLAGS=	CPPFLAGS="-I${LOCALBASE}/include" \
		CFLAGS="-Wall -Wstrict-prototypes ${CFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/milter-checkrcpt ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/milter-checkrcpt.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
