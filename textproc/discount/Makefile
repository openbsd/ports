# $OpenBSD: Makefile,v 1.15 2018/03/06 18:59:48 bket Exp $

COMMENT =		fast C implementation of Markdown

DISTNAME =		discount-2.2.3

CATEGORIES =		textproc

HOMEPAGE =		http://www.pell.portland.or.us/~orc/Code/markdown/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c

MASTER_SITES =		http://www.pell.portland.or.us/~orc/Code/discount/
EXTRACT_SUFX =		.tar.bz2

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	configure.sh

INSTALL_TARGET =	install.everything

pre-configure:
	@sed -i 's,\./markdown,\./discount,' ${WRKSRC}/tests/*

.include <bsd.port.mk>
