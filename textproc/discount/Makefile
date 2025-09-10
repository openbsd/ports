COMMENT =		fast C implementation of Markdown

DISTNAME =		discount-3.0.1.2
EXTRACT_SUFX =		.tar.bz2
SHARED_LIBS =		markdown 1.0
CATEGORIES =		textproc

# http://github.com/Orc/discount
HOMEPAGE =		https://www.pell.portland.or.us/~orc/Code/markdown/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c

SITES =			https://www.pell.portland.or.us/~orc/Code/discount/

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	configure.sh
CONFIGURE_ARGS =	--github-checkbox=entity \
			--shared \
			--cxx-binding

INSTALL_TARGET =	install.everything

post-install:
	mv ${PREFIX}/bin/{markdown,discount}
	mv ${PREFIX}/man/man1/{markdown,discount}.1
	mv ${PREFIX}/man/man3/{markdown,discount}.3
	mv ${PREFIX}/man/man7/{markdown,discount}.7

.include <bsd.port.mk>
