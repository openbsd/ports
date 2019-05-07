# $OpenBSD: Makefile,v 1.17 2019/05/07 19:44:30 landry Exp $

COMMENT =		fast C implementation of Markdown

DISTNAME =		discount-2.2.4
SHARED_LIBS =		markdown 0.0
CATEGORIES =		textproc
REVISION =		0

HOMEPAGE =		http://www.pell.portland.or.us/~orc/Code/markdown/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

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
	@sed -i 's,\./markdown,\./discount,' ${WRKSRC}/tests/*.*

.include <bsd.port.mk>
