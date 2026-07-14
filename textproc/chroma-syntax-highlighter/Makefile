COMMENT =	general purpose syntax highlighter in pure Go

V =	2.27.0
DISTNAME =	chroma-syntax-highlighter-${V}

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/alecthomas/chroma

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

# To generate for a new version, bump V, run "make dist" and upload the
# resulting .tar.gz.
SITES =	https://ports.mocheryl.org/releases/

MODULES =	lang/go

MODGO_LDFLAGS +=	-X 'main.version=${V}'
MODGO_LDFLAGS +=	-X 'main.commit=a6d00fe2cdfc88da0b91396e577da16c75c9c7fb'
MODGO_LDFLAGS +=	-X 'main.date=2026-06-17T02:11:19Z'

# Cannot find package "test"
NO_TEST =	Yes

dist:
	tmp=`mktemp -d`; \
	cd $$tmp/; \
	ftp https://github.com/alecthomas/chroma/archive/refs/tags/v$V${EXTRACT_SUFX}; \
	tar xvvzf v$V${EXTRACT_SUFX}; \
	cd chroma-$V/cmd/chroma/ && go mod tidy && go mod vendor; \
	cd .. && mkdir -p $$tmp/${DISTNAME}/cmd; \
	cp -r chroma $$tmp/${DISTNAME}/cmd/; \
	cd $$tmp/ && tar -cvvf ${DISTNAME}.tar ${DISTNAME}; \
	gzip -9vo ${DISTNAME}${EXTRACT_SUFX} ${DISTNAME}.tar; \
	ls -l ${DISTNAME}${EXTRACT_SUFX}

# Rename to avoid conflict with games/chroma
pre-build:
	@mv ${WRKSRC}/cmd/chroma ${WRKSRC}/cmd/chroma-hl

do-build:
	@cd ${WRKSRC} && ${MODGO_BUILD_CMD} ./cmd/...

.include <bsd.port.mk>
