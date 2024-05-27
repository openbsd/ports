COMMENT =		fast C implementation of Markdown

DISTNAME =		discount-2.2.7d
PKGNAME =		discount-2.2.7pl0
SHARED_LIBS =		markdown 0.0
CATEGORIES =		textproc

HOMEPAGE =		https://www.pell.portland.or.us/~orc/Code/markdown/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c

SITES =			https://www.pell.portland.or.us/~orc/Code/discount/
EXTRACT_SUFX =		.tar.bz2

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	configure.sh
CONFIGURE_ARGS =	--github-checkbox \
			--shared \
			--cxx-binding

INSTALL_TARGET =	install.everything

post-install:
	mv ${PREFIX}/bin/{markdown,discount}
	mv ${PREFIX}/man/man1/{markdown,discount}.1
	mv ${PREFIX}/man/man3/{markdown,discount}.3
	mv ${PREFIX}/man/man7/{markdown,discount}.7

.include <bsd.port.mk>
