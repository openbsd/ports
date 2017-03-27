# $OpenBSD: Makefile,v 1.14 2017/03/27 23:46:55 danj Exp $

COMMENT =		fast C implementation of Markdown

DISTNAME =		discount-2.2.2

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
