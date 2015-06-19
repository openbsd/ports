# $OpenBSD: Makefile,v 1.10 2015/06/19 16:29:32 jca Exp $

COMMENT =		fast C implementation of Markdown

DISTNAME =		discount-2.1.8a
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		http://www.pell.portland.or.us/~orc/Code/markdown/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c

MASTER_SITES =		http://www.pell.portland.or.us/~orc/Code/discount/
EXTRACT_SUFX =		.tar.bz2

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	configure.sh
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

INSTALL_TARGET =	install.everything

pre-configure:
	@perl -pi -e 's,\./markdown,\./discount,' ${WRKSRC}/tests/*

.include <bsd.port.mk>
