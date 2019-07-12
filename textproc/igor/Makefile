# $OpenBSD: Makefile,v 1.7 2019/07/12 20:49:59 sthen Exp $

COMMENT =		FreeBSD Documentation Project sanity check script
VERSION =		1.595
REVISION =		0
DISTNAME =		igor-${VERSION}
CATEGORIES =		textproc
HOMEPAGE =		http://www.wonkity.com/~wblock/igor/
MAINTAINER =		Ingo Schwarze <schwarze@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://docscripts.glenbarber.us/tags/igor/${VERSION}/

NO_BUILD =		Yes
NO_TEST =		Yes

post-patch:
	sed -i 's,/usr/local/etc,${SYSCONFDIR},g' \
		${WRKSRC}/igor ${WRKSRC}/igor.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/igor ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/igor.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
