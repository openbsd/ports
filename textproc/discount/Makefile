# $OpenBSD: Makefile,v 1.19 2021/02/19 19:13:26 ajacoutot Exp $

COMMENT =		fast C implementation of Markdown

DISTNAME =		discount-2.2.6
SHARED_LIBS =		markdown 0.0
CATEGORIES =		textproc

HOMEPAGE =		http://www.pell.portland.or.us/~orc/Code/markdown/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c

MASTER_SITES =		http://www.pell.portland.or.us/~orc/Code/discount/
EXTRACT_SUFX =		.tar.bz2

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	configure.sh
CONFIGURE_ARGS =	--github-checkbox \
			--shared \
			--cxx-binding

INSTALL_TARGET =	install.everything

pre-configure:
	sed -i 's,\./markdown,\./discount,' ${WRKSRC}/tests/*.*

post-install:
	mv ${PREFIX}/bin/{markdown,discount}
	mv ${PREFIX}/man/man1/{markdown,discount}.1
	mv ${PREFIX}/man/man3/{markdown,discount}.3
	mv ${PREFIX}/man/man7/{markdown,discount}.7
	

.include <bsd.port.mk>
