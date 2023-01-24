COMMENT=	filter files for IP address matches
DISTNAME=	grepcidr3-3.0
CATEGORIES=	textproc net

HOMEPAGE=	https://github.com/jrlevine/grepcidr3

GH_ACCOUNT=	jrlevine
GH_PROJECT=	grepcidr3
GH_COMMIT=	c6f178b6b09c369242ca0b7341208bcbfd5051cc

# BSD 2-Clause and GPLv2+
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c

MAKE_FLAGS +=	CFLAGS="${CFLAGS}"

NO_TEST=	Yes

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/grepcidr $(PREFIX)/bin/grepcidr3
	$(INSTALL_MAN) $(WRKSRC)/grepcidr.1 $(PREFIX)/man/man1/grepcidr3.1

.include <bsd.port.mk>
