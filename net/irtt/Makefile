COMMENT=	UDP latency tester, round-trip/1-way/jitter etc

MODGO_MODNAME=	github.com/heistp/irtt
MODGO_VERSION=	v0.9.1

DISTNAME=	irtt-${MODGO_VERSION}

CATEGORIES=	net

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go
HOMEPAGE=	https://github.com/heistp/irtt

MODGO_MODULES=	\
	github.com/ogier/pflag		 v0.0.2-0.20160129220114-45c278ab3607 \
	github.com/pkg/profile		 v1.3.0 \
	github.com/yuin/goldmark	 v1.3.5 \
	golang.org/x/crypto		 v0.0.0-20191011191535-87dc89f01550 \
	golang.org/x/mod		 v0.4.2 \
	golang.org/x/net		 v0.0.0-20210405180319-a5a99cb37ef4 \
	golang.org/x/sync		 v0.0.0-20210220032951-036812b2e83c \
	golang.org/x/sys		 v0.0.0-20210514084401-e8d321eab015 \
	golang.org/x/term		 v0.0.0-20201126162022-7de9c90e9dd1 \
	golang.org/x/text		 v0.3.3 \
	golang.org/x/tools		 v0.1.1 \
	golang.org/x/xerrors		 v0.0.0-20200804184101-5ec99f83aff1

MODGO_MODFILES=	\
	golang.org/x/crypto	 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/net	 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/net	 v0.0.0-20190620200207-3b0461eec859 \
	golang.org/x/sync	 v0.0.0-20190423024810-112230192c58 \
	golang.org/x/sys	 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys	 v0.0.0-20190412213103-97732733099d \
	golang.org/x/sys	 v0.0.0-20201119102817-f84b799fce68 \
	golang.org/x/sys	 v0.0.0-20210330210617-4fbd30eecc44 \
	golang.org/x/sys	 v0.0.0-20210510120138-977fb7262007 \
	golang.org/x/text	 v0.3.0 \
	golang.org/x/tools	 v0.0.0-20180917221912-90fa682c2a6e \
	golang.org/x/tools	 v0.0.0-20191119224855-298f0cb1881e \
	golang.org/x/xerrors	 v0.0.0-20190717185122-a985d3407aa7 \
	golang.org/x/xerrors	 v0.0.0-20191011141410-1b5146add898

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/*.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
