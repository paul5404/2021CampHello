package mypack;

public class employee implements java.io.Serializable {
		private int id;
		private String name;
		public employee(){}
		
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		
}
