BROKEN-aarch64 = pty@v2.0.0+incompatible/doc.go:15:9: undefined: open

COMMENT =	modern and intuitive terminal-based text editor

MODGO_MODNAME =	github.com/zyedidia/micro/v2
MODGO_VERSION =	v2.0.8

# Snagged from https://github.com/zyedidia/micro/releases/tag/${MODGO_VERSION}
TAG_HASH =	cfcb2e4

DISTNAME =	micro-${MODGO_VERSION}
CATEGORIES =	editors
HOMEPAGE =	https://micro-editor.github.io/
REVISION =	0

# MIT "Expat" License
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

WRKDIST =		${WRKSRC}

MODULES =		lang/go
MODGO_TYPE =            bin

MODGO_LDFLAGS +=	-X github.com/zyedidia/micro/v2/internal/util.Version=${MODGO_VERSION:S/v//}
MODGO_LDFLAGS +=	-X github.com/zyedidia/micro/v2/internal/util.CommitHash=${TAG_HASH}

NO_TEST =	Yes

MODGO_MODULES =	\
	github.com/blang/semver			 v3.5.1+incompatible \
	github.com/chzyer/logex			 v1.1.10 \
	github.com/chzyer/readline		 v0.0.0-20180603132655-2972be24d48e \
	github.com/chzyer/test			 v0.0.0-20180213035817-a1ea475d72b1 \
	github.com/davecgh/go-spew		 v1.1.1 \
	github.com/dustin/go-humanize		 v1.0.0 \
	github.com/gdamore/encoding		 v1.0.0 \
	github.com/go-errors/errors		 v1.0.1 \
	github.com/kballard/go-shellquote	 v0.0.0-20180428030007-95032a82bc51 \
	github.com/kr/pretty			 v0.1.0 \
	github.com/kr/pty			 v1.1.1 \
	github.com/kr/text			 v0.1.0 \
	github.com/lucasb-eyer/go-colorful	 v1.0.3 \
	github.com/mattn/go-isatty		 v0.0.11 \
	github.com/mattn/go-runewidth		 v0.0.7 \
	github.com/mitchellh/go-homedir		 v1.1.0 \
	github.com/p-e-w/go-runewidth		 v0.0.10-0.20200613030200-3e1705c5c059 \
	github.com/pmezard/go-difflib		 v1.0.0 \
	github.com/robertkrimen/otto		 v0.0.0-20191219234010-c382bd3c16ff \
	github.com/sergi/go-diff		 v1.1.0 \
	github.com/stretchr/objx		 v0.1.0 \
	github.com/stretchr/testify		 v1.4.0 \
	github.com/xo/terminfo			 v0.0.0-20200218205459-454e5b68f9e8 \
	github.com/yuin/gopher-lua		 v0.0.0-20191220021717-ab39c6098bdb \
	github.com/zyedidia/clipboard		 v1.0.3 \
	github.com/zyedidia/glob		 v0.0.0-20170209203856-dd4023a66dc3 \
	github.com/zyedidia/go-shellquote	 v0.0.0-20200613203517-eccd813c0655 \
	github.com/zyedidia/highlight		 v0.0.0-20170330143449-201131ce5cf5 \
	github.com/zyedidia/json5		 v0.0.0-20200102012142-2da050b1a98d \
	github.com/zyedidia/poller		 v1.0.1 \
	github.com/zyedidia/pty			 v2.0.0+incompatible \
	github.com/zyedidia/tcell/v2		 v2.0.6 \
	github.com/zyedidia/terminal		 v0.0.0-20180726154117-533c623e2415 \
	golang.org/x/sys			 v0.0.0-20191026070338-33540a1f6037 \
	golang.org/x/text			 v0.3.2 \
	golang.org/x/tools			 v0.0.0-20180917221912-90fa682c2a6e \
	gopkg.in/check.v1			 v1.0.0-20190902080502-41f04d3bba15 \
	gopkg.in/sourcemap.v1			 v1.0.5 \
	gopkg.in/yaml.v2			 v2.2.7 \
	layeh.com/gopher-luar			 v1.0.7

MODGO_MODFILES =	\
	github.com/davecgh/go-spew	 v1.1.0 \
	github.com/yuin/gopher-lua	 v0.0.0-20190206043414-8bfc7677f583 \
	golang.org/x/sys		 v0.0.0-20190204203706-41f3e6584952 \
	golang.org/x/sys		 v0.0.0-20190626150813-e07cf5db2756 \
	golang.org/x/text		 v0.3.0 \
	gopkg.in/check.v1		 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/yaml.v2		 v2.2.2 \
	gopkg.in/yaml.v2		 v2.2.4

.include <bsd.port.mk>
